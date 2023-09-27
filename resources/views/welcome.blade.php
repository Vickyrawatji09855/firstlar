@extends('layouts.default')

    <!-- Required meta tags -->
    @section('title', 'Add Customer')
    {{-- <title>Hello, world!</title> --}}

    @section('content')
    <div class="container mt-3">
        <form method="POST" action="{{ $url }}" enctype="multipart/form-data">
            @csrf
            <div class="mb-2">
              <label for="exampleInputPassword1" class="form-label">Name</label>
              <input type="text" class="form-control" id="exampleInputPassword1" name="name"   value="{{ old('name') }}">
            </div>
            <span class="text-danger">@error('name')
                {{ $message }}
            @enderror </span>
            <div>
                <label for="exampleInputPassword1" class="form-label">Gender: </label>
                <input type="radio" id="html" name="gender" value="M" @if(old('gender')== 'M') checked @endif">
                <label for="html">MALE</label>
                <input type="radio" id="css" name="gender" value="F"  @if(old('gender')=='F') checked @endif">
                <label for="css">FEMALE</label>
                <input type="radio" id="javascript" name="gender" value="O"   @if(old('gender')=='O') checked @endif">
                <label for="javascript">OTHER</label>
            </div>
            <span class="text-danger">@error('gender')
                {{ $message }}
            @enderror </span>


              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Address</label>
                <input type="text" class="form-control" id="exampleInputPassword1" name="address" value="{{ old('address') }}">
              </div>
              <span class="text-danger">@error('address')
                {{ $message }}
            @enderror </span>

            <div class="mb-2">
                <label for="myfile">Select a Image:</label>
                <input type="file" class="form-control" id="myfile" name="image" >
            </div>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">DOB</label>
                <input type="date" class="form-control" id="exampleInputPassword1" name="dob" value="{{ old('dob') }}">
              </div>
              <span class="text-danger">@error('dob')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pass"  value="{{ old('pass') }}">
              </div>
              <span class="text-danger">@error('pass')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password_confirmation"  value="{{ old('password_confirmation') }}">
              </div>
              <span class="text-danger">@error('password_confirmation')
                {{ $message }}
            @enderror </span>



        <div class="mb-2">
        <label for="exampleInputPassword1" class="form-label">City</label>
        <input type="text" class="form-control" id="exampleInputPassword1" name="city" value="{{ old('city') }}">
        </div>
        <span class="text-danger">@error('city')
            {{ $message }}
        @enderror </span>
        <div class="mb-2">
            <label for="exampleInputPassword1" class="form-label">State</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="state" value="{{ old('state') }}">
        </div>
        <span class="text-danger">@error('state')
            {{ $message }}
        @enderror </span>
        <div class="mb-2">
            <label for="exampleInputPassword1" class="form-label">Country</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="country" value="{{ old('country') }}">
        </div>
        <span class="text-danger">@error('country')
            {{ $message }}
        @enderror </span>

        <div class="mb-2">
            <label for="">Subjects: </label>
            @foreach($Courses as $Course)
            <input type="checkbox" id="vehicle1" name="vehicle[]" value="{{ $Course->id }}">
            <label for="vehicle1"> {{ $Course->Cname }}</label>
            @endforeach
        </div>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Createrd At</label>
                <input type="date" class="form-control" id="exampleInputPassword1" name="create"  value="{{ old('create') }}">
              </div>
              <span class="text-danger">@error('create')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Updated At</label>
                <input type="date" class="form-control" id="exampleInputPassword1" name="update"  value="{{ old('update') }}">
              </div>
              <span class="text-danger">@error('update')
                {{ $message }}
            @enderror </span>
            <button type="submit" class="btn btn-primary" style="margin-bottom: 10px">Submit</button>
          </form>
      </div>
    @endsection
