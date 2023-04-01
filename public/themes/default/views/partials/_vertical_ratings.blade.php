@if($ratings)
        @for($i = 0; $i < 5; $i++)
            @if( ($ratings - $i) >= 1 )
               {{-- <span class="rated"><i class="fas fa-star fa-fw"></i></span>--}}
                <a href="#"><i class="fas fa-star"></i></a>
            @elseif( ($ratings - $i) < 1 && ($ratings - $i) > 0 )
                {{--<span class="rated"><i class="fas fa-star-half-o fa-fw"></i></span>--}}
               <a href="#"><i class="fas fa-star-half-alt"></i></a>
            @else
                {{--<span><i class="fas fa-star-o fa-fw"></i></span>--}}
                <a href="#"><i class="far fa-star"></i></a>
            @endif
        @endfor
@endif

