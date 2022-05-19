<style>
    button {
        padding: 8px;
    }

</style>
<table id="table" data-toggle="table" data-height="500" data-ajax="show_to_collect" data-pagination="true"
    data-show-refresh="true" data-search="true">
    <thead>
        <tr>
            <th data-checkbox="true" data-footer-formatter="total"></th>
            <th data-field="order_unique">Order Id</th>
            <th data-field="total" data-formatter="total_pending">Total
            </th>
            <th data-field="payment_status" data-formatter="collect_payment_status">Payment Status
            </th>
            <th data-field="name">Pickup Point Name
            </th>
            <th data-field="address">Address
            </th>
            <th data-field="pincode">Pincode
            </th>
            <th data-field="created_at" data-formatter="change_date_format">Date</th>
            </th>
        </tr>
    </thead>
</table>
