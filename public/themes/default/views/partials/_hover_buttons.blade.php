<div class="feature__items-view box-view">
    <a class="product-link itemQuickView" href="{{ route('quickView.product', $item->slug) }}"><i class="far fa-search-plus"></i></a>
</div>
<div class="feature__items-wishlist box-wishlist">
    <a href="javascript:void(0)" data-link="{{ route('wishlist.add', $item) }}" class="add-to-wishlist"><i class="far fa-heart"></i></a>
</div>
{{--<div class="feature__items-wishlist box-change">
    <a href="#"><i class="far fa-repeat-alt"></i></a>
</div>--}}
<div class="feature__items-wishlist box-cart">
    <div class="feature__items-wishlist box-cart">
        <a href="javascript:void(0)" data-link="{{ route('cart.addItem', $item->slug) }}" class="btn-primary sc-add-to-cart" tabindex="0">{{trans('theme.add_to_cart')}}</a>
    </div>
    {{--<a href="#" class="btn-primary">Add to Cart</a>--}}
</div>