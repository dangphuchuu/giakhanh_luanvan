<div class="modal fade text-left" id="order_detail{{$order->id}}" tabindex="-1" role="dialog"
    aria-labelledby="order_detail" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="order_detail">{{__("Order Number")}}: {{$order->id}} -
                    {{__("Date of receipt")}}: {{$order->updated_at->format('d/m/Y')}} 
            <a href="javascript:void(0)" style="color:white" class="btn bg-info" onclick="status({{$order->id}},2)">{{__("Confirm")}}</a>

                </h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>

            <div class="modal-body">
                <table class='table table-bordered text-nowrap'>
                    <thead>
                        <tr>
                            <th class="text-center">ID {{__("Products")}}</th>
                            <th class="text-center">{{__("Products")}}</th>
                            <th class="text-center">{{__("Image")}}</th>
                            <th class="text-center">{{__("Quantity")}}</th>
                            <th class="text-center">{{__("Unit Price")}}</th>
                            <th class="text-center">{{__("Created Date")}}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order->products as $orderPro)
                        <tr>
                            <td class="text-center" style="width:5%">{{$orderPro->id}}</td>
                            <td class="text-wrap" style="max-width: 300px">{{$orderPro->name}}</td>
                            <td style="width: 150px">
                                <img style="width: 150px"
                                    src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $orderPro->ProductsImage->first()->image }}.jpg">
                            </td>
                            <td class="text-center" style="width:5%">{{$orderPro->pivot->quantity}}</td>
                            <td class="text-center" style="width:200px">
                                @if($orderPro->price_new)
                                {{number_format($orderPro->price_new,0,',','.')}}<sup
                                    style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                @else
                                {{number_format($orderPro->price,0,',','.')}}<sup
                                    style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup>
                                @endif
                            </td>
                            <td class="text-center">{{$order->created_at->format('d/m/Y - H:i')}}</td>
                        </tr>
                        @endforeach
                        <tr>
                            <th class="text-center" style="width:5%">{{__("Content")}}</th>
                            <td colspan="5" class="text-wrap">{{$order->content}}</td>
                        </tr>
                        <thead>
                            <tr>
                                <th colspan="2" class="text-center">{{__("Sender's lastname")}}</th>
                                <th colspan="2" class="text-center">{{__("Sender's firstname")}}</th>
                                <th colspan="2" class="text-center">{{__("Sender's phone")}}</th>
                            </tr>
                        </thead>
                    <tbody>
                        <tr>
                            <td colspan="2" class="text-center text-wrap">{{$order->lastname_sender}}</td>
                            <td colspan="2" class="text-center text-wrap">{{$order->firstname_sender}}</td>
                            <td colspan="2" class="text-center text-wrap">{{$order->phone_sender}}</td>
                        </tr>
                    </tbody>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>