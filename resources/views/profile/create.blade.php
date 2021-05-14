@extends('layouts.master')
@section('title', 'Category Form Page')
@section('contact')
    <div class="container">
    <style>
        p {
            color:red;
        }

        h1{
            color:green;
        }
    </style>
        @if(session('success'))
            <div>
                <h1>Data inserted successfully</h1>
            </div>
        @endif
        <div class="row">
            <form method="POST" action="{{route('store')}}">
                @csrf
                <div>
                    <label>Image</label>
                    <input type="file" name="profile" value="{{old('profile')}}">
                    @error('profile')
                            <p>{{$message}}</p>
                    @enderror
                </div>
                <div>
                    <button name="sunbmit">Save</button>
                </div>
            </form>
        </div>
    </div>
@endsection
