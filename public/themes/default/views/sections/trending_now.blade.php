@if(count($trending_categories))
    <section>
        <div class="feature">
            <div class="container">
                <div class="feature__inner">
                    <div class="feature__header">
                        <div class="sell-header sell-header--bold">
                            <div class="sell-header__title">
                                <h2>{!! trans('theme.trending_now') !!}</h2>
                            </div>
                            <div class="header-line">
                                <span></span>
                            </div>
                            <div class="feature__tabs">
                                <ul>
                                    @foreach($trending_categories as $key => $trendingCat)
                                        @if( count( $trendingCat->listings()->available()->get() ))
                                            <li @if($key < 1 )class="active" @endif>
                                                <a {{--onclick="select_tab_content('{{$trendingCat->slug}}')"--}} href="#{{$trendingCat->slug}}">{{$trendingCat->name}}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                            <div class="header-line">
                                <span></span>
                            </div>
                            <div class="best-deal__arrow">
                                <!-- <ul>
                                    <li><button class="left-arrow slider-arrow slick-arrow feature-left1"><i class="fal fa-chevron-left"></i></button></li>
                                    <li><button class="right-arrow slider-arrow slick-arrow feature-right1"><i class="fal fa-chevron-right"></i></button></li>
                                </ul> -->
                            </div>
                        </div>
                    </div>

                    <div class="feature__items">
                        @foreach($trending_categories as $trendingCat)
                            <div class="feature__items-inner" id="{{$trendingCat->slug}}">

                                @include('theme::partials._product_horizontal', ['products' => $trendingCat->listings()->available()->get()->take(config('system.popular.take.trending', 10)) ])

                                {{-- @foreach($trendingCat->listings()->available()->get() as $item)
                                    {{-- <div class="feature__items-box box">
                                         <div class="feature__items-img box-img">
                                             <img src="{{ get_inventory_img_src($item, 'medium') }}" alt="{{ $item->title }}" title="{{ $item->title }}">
                                         </div>
                                         <div class="feature__items-ratting box-ratting">
                                             @include('theme::partials._ratings', ['ratings' => $item->feedbacks->avg('rating')])
                                         </div>
                                         <div class="feature__items-title box-title">
                                             <a href="{{ route('show.product', $item->slug) }}">{{ $item->title }}</a>
                                         </div>
                                         <div class="feature__items-price box-price">
                                            @include('theme::partials._home_pricing')
                                         </div>
                                         <div class="feature__items-action box-action">
                                             @include('theme::partials._hover_buttons')
                                         </div>
                                     </div>--}}
                                {{-- @endforeach--}}
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif