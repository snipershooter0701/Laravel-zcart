@extends('theme::layouts.main')

@section('content')
    <!-- HEADER SECTION -->
    @include('theme::headers.order_detail')

    <!-- CONTENT SECTION -->
	@include('theme::contents.leave_feedback')

    <!-- BROWSING ITEMS -->
    @include('theme::sections.recent_views')
@endsection