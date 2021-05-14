@extends('layouts.master')

@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
            <div id="sidebar">
                <div class="toggle_btn" onclick="toggleSidebar()">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                    <ul>
                        <li class="tag">home</li>
                        <li class="tag">home</li>
                        <li class="tag">home</li>
                    </ul>
            </div>
            {{-- <h1>Private Clinic Management System</h1> --}}
    </div>
</div>
@endsection
