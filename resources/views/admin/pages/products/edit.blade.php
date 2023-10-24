<div class="modal fade text-left" id="products_edit{{$pro->id}}" tabindex="-1" role="dialog" aria-labelledby="products_edit"
                        aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="products_edit">Edit Product</h5>
                                        <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                                            <i data-feather="x"></i>
                                        </button>
                                    </div>
                                    <form action="admin/products/edit/{{$pro->id}}" method="post">
                                        @csrf
                                        <div class="modal-body">
                                            <label>Name: </label>
                                            <div class="form-group">
                                            <input type="text" class="form-control" name="name" value="{{$pro->name}}" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn" data-bs-dismiss="modal">
                                                <i class="bx bx-x d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Close</span>
                                            </button>
                                            <button type="submit" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                                                <i class="bx bx-check d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Accept</span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
</div>