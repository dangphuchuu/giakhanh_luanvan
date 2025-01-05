<div class="modal fade text-left" id="staff_role{{$users->id}}" tabindex="-1" role="dialog" aria-labelledby="staff_role" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staff_role">{{__("Role")}} {{__("Staff")}}</h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/staff/role/{{$users->id}}" method="post">
                @csrf
                <div class="modal-body">
                    <label>{{__("Role")}}: </label>
                    <div class="form-group">
                        <select name="role">
                            @foreach($roles as $role)
                            <option
                                @if ($role->id == $users->roles->first()->id)
                                {{ 'selected'}}
                                @endif
                                value="{{$role->id}}">
                                {{$role->name}}
                            </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn" data-bs-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">{{__("Close")}}</span>
                    </button>
                    <button type="submit" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">{{__("Accept")}}</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@section('scripts')
<script>
    $(document).ready(function() {
        $('.checkPassword').change(function() {
            if ($(this).is(":checked")) {
                $('.password').removeAttr('disabled');
            } else {
                $('.password').attr('disabled', '');
            }
        });
    });
</script>
@endsection