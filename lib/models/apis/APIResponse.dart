class APIResponse<T> {
  Status status;
  T? data;
  String? message;

  APIResponse.loading(this.message) : status = Status.loading;

  APIResponse.completed(this.data) : status = Status.completed;

  APIResponse.error(this.message) : status = Status.error;

  APIResponse.initial(this.message) : status = Status.initial;

  @override
  String toString() {
    return 'Status: $status, Message: $message, Data: $data';
  }
}

enum Status { initial, loading, completed, error }
