import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';

part 'tracked.freezed.dart';

class TrackedAction<TParam> {
  final Future<String?> Function(TParam)? _func;
  final Future<String?> Function()? _funcNoParam;

  final AsyncAction _asyncAction;
  final Observable<ObservableFuture<TrackedActionResult>> _result;
  late final TrackedActionStatus _status;

  ObservableFuture<TrackedActionResult> get result => _result.value;
  set result(ObservableFuture<TrackedActionResult> val) => _result.value = val;

  late final Computed<bool> _isExecuting = Computed(() => result.status == FutureStatus.pending);
  late final Computed<bool> _isCompleted = Computed(() =>
      result.status == FutureStatus.fulfilled &&
      result.value!.maybeMap<bool>(
        ok: (_) => true,
        failure: (_) => true,
        orElse: () => false,
      ));
  late final Computed<bool> _hasFailed = Computed(() => isCompleted && result.value!.maybeMap(failure: (_) => true, orElse: () => false));
  late final Computed<bool> _hasSucceed = Computed(() => isCompleted && result.value!.maybeMap(ok: (_) => true, orElse: () => false));

  TrackedAction._(this._func, this._funcNoParam, {String? name})
      : _asyncAction = AsyncAction(name ?? 'TrackedAction'),
        _result = Observable(ObservableFuture.value(TrackedActionResult<void>.initial())) {
    _status = TrackedActionStatus._(this);
  }

  bool get isExecuting => _isExecuting.value;
  bool get isCompleted => _isCompleted.value;
  bool get hasFailed => _hasFailed.value;
  bool get hasSucceed => _hasSucceed.value;

  TrackedActionStatus get status => _status;

  Future<String?> execute([TParam? param]) async {
    return _asyncAction.run(() async {
      result = ObservableFuture(_func != null
          ? _func!.call(param!).then((failure) => Future.value(
              failure != null ? TrackedActionResult<TParam>.failure(this, failure, param: param) : TrackedActionResult<TParam>.ok()))
          : _funcNoParam!.call().then((failure) =>
              Future.value(failure != null ? TrackedActionResult<TParam>.failure(this, failure) : TrackedActionResult<TParam>.ok())));
      final res = await result;
      return res.maybeWhen(failure: (command, failure, dynamic param) => failure, orElse: () => null);
    });
  }

  Future<String?> call([TParam? param]) async => execute(param);

  Future<void> retry() async {
    if (!hasFailed) {
      assert(!hasFailed, 'You can only retry a failed tracked action');
      return;
    }

    await execute((result.value as FailureActionResult<TParam>).param);
  }

  static TrackedAction<TParam> create<TParam>(Future<String?> Function(TParam x) func, {String? name}) {
    return TrackedAction._(func, null, name: name);
  }

  static TrackedAction<void> createNoParam(Future<String?> Function() func, {String? name}) {
    return TrackedAction._(null, func, name: name);
  }
}

@freezed
class TrackedActionResult<TParam> with _$TrackedActionResult<TParam> {
  const factory TrackedActionResult.initial() = _InitialState<TParam>;
  const factory TrackedActionResult.ok() = _Ok<TParam>;
  const factory TrackedActionResult.failure(TrackedAction action, String failure, {TParam? param}) = FailureActionResult<TParam>;
}

class TrackedActionStatus {
  final TrackedAction _action;

  TrackedActionStatus._(this._action);

  Future<void> Function() get retryFunc => () async => await _action.retry();

  bool get isExecuting => _action._isExecuting.value;
  bool get isCompleted => _action._isCompleted.value;
  bool get hasFailed => _action._hasFailed.value;
  bool get hasSucceed => _action._hasSucceed.value;

  ObservableFuture<TrackedActionResult> get result => _action._result.value;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
      {required TResult Function() ok,
      required TResult Function() loading,
      required TResult Function(String failure, Future<void> Function() retryFunc) failure}) {
    return isExecuting
        ? loading()
        : hasFailed
            ? failure((result.value as FailureActionResult).failure, retryFunc)
            : ok();
  }

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
      {TResult Function()? ok,
      TResult Function()? loading,
      TResult Function(String failure, Future<void> Function() retryFunc)? failure,
      required TResult Function() orElse}) {
    if (isExecuting && loading != null) return loading();
    if (hasFailed && failure != null) return failure((result.value as FailureActionResult).failure, retryFunc);
    if (hasSucceed && ok != null) return ok();

    return orElse();
  }
}
