<section>
    <div class="neckbands">
        <div class="container">
            <div class="neckbands__inner">
                <div class="neckbands__header">
                    <div class="sell-header sell-header--bold">
                        <div class="sell-header__title">
                            <h2>{{trans('theme.recently_added')}}</h2>
                        </div>
                        <div class="header-line">
                            <span></span>
                        </div>
                        <div class="best-deal__arrow">
                            <ul>
                                <li><button class="left-arrow slider-arrow slick-arrow neckbands-left"><i class="fal fa-chevron-left"></i></button></li>
                                <li><button class="right-arrow slider-arrow slick-arrow neckbands-right"><i class="fal fa-chevron-right"></i></button></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="neckbands__items">
                    <div class="neckbands__items-inner">

                        @include('theme::partials._product_horizontal',  [
                            'products' => $recent, 'ratings' => 1, 'pricing' => 1, 'hover' => 1
                        ])
                       {{--
                            <div class="neckbands__items-box box">
                                <div class="neckbands__items-img box-img">
                                    <img src="images/n1.png" alt="">
                                </div>
                                <div class="neckbands__items-title box-title">
                                    <a href="#">letest gloves fight like pro player</a>
                                </div>
                            </div>
                        --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>