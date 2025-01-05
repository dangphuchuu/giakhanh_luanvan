<div class="modal fade text-left" id="staff_permission{{$users->id}}" tabindex="-1" role="dialog" aria-labelledby="staff_permission" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staff_permission">{{__("Permissions")}} {{__("of")}} {{__("Staff")}}</h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/staff/permission/{{$users->id}}" method="post">
                @csrf
                <div class="modal-body">
                    <label>{{__("Permissions")}}: </label>
                    @foreach($permissions as $per)
                    <div class="form-group">
                        <input class="form-check-input" name="permissions[]" value="{{$per->name}}" id="{{$per->id}}" type="checkbox"
                            @foreach($users->getDirectPermissions() as $pr)
                                @if($per->id == $pr->id)
                                    checked
                                @endif
                            @endforeach
                        >
                        <label class="form-check-label" for="{{$per->id}}">
                            {{$per->name}}
                        </label>
                    </div>
                    @endforeach
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