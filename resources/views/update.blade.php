
@extends('layouts.default')

    <!-- Required meta tags -->
    @section('title', 'Update Customer')


@section('content')
      <div class="container mt-3">

        <form method="POST" action="{{ $url }}" enctype="multipart/form-data" >
            @csrf
            <div class="mb-2">
              <label for="exampleInputPassword1" class="form-label">Name</label>
              <input type="text" class="form-control" id="exampleInputPassword1" name="name"  value=" {{ $customer->name }}" >
            </div>
            <span class="text-danger">@error('name')
                {{ $message }}
            @enderror </span>
            <div>
                <label for="exampleInputPassword1" class="form-label">Gender: </label>
                <input type="radio" id="html" name="gender" value="M"  {{ $customer->gender=="M"? "checked":"" }} >
                <label for="html">MALE</label>
                <input type="radio" id="css" name="gender" value="F"  {{ $customer->gender=="F"? "checked":"" }} >
                <label for="css">FEMALE</label>
                <input type="radio" id="javascript" name="gender" value="O"   {{ $customer->gender=="O"? "checked":"" }}  >
                <label for="javascript">OTHER</label>
            </div>
            <span class="text-danger">@error('gender')
                {{ $message }}
            @enderror </span>


              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Address</label>
                <input type="text" class="form-control" id="exampleInputPassword1" name="address" value=" {{ $customer->adderss }}" >
              </div>
              <span class="text-danger">@error('address')
                {{ $message }}
            @enderror </span>

            <div class="mb-2">
                <label for="myfile">Select a Image:</label>
                <input type="file" class="form-control" id="myfile" name="image">
                <img src="{{url('/images/'.$customer->image)}}" alt="Img" width="100px" height="100px">
            </div>
            {{-- 'images/'.$customer->image --}}
              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">DOB</label>

                <input type="date" class="form-control" id="exampleInputPassword1" name="dob" value="{{$customer->dob }}" >
              </div>
              <span class="text-danger">@error('dob')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pass"value="{{$customer->password }}">
              </div>
              <span class="text-danger">@error('pass')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password_confirmation" value="{{$customer->confirm }}" >
              </div>
              <span class="text-danger">@error('password_confirmation')
                {{ $message }}
            @enderror </span>

            <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">City</label>
                <input type="text" class="form-control" id="exampleInputPassword1" name="city" value="{{ $customer->userAddresss->City }}">
                </div>
                <span class="text-danger">@error('city')
                    {{ $message }}
                @enderror </span>
                <div class="mb-2">
                    <label for="exampleInputPassword1" class="form-label">State</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="state" value="{{  $customer->userAddresss->state }}">
                </div>
                <span class="text-danger">@error('state')
                    {{ $message }}
                @enderror </span>
                <div class="mb-2">
                    <label for="exampleInputPassword1" class="form-label">Country</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="country" value="{{  $customer->userAddresss->country }}">
                </div>
                <span class="text-danger">@error('country')
                    {{ $message }}
                @enderror </span>


            <div class="mb-2">
                <label for="">Subjects: </label>

                @php $i=1;  @endphp
                @foreach($Courses as $Course)
                <input type="checkbox" id="vehicle1" name="vehicle[]" value="{{ $Course->id }}" @if(in_array($Course->id,$courseid)) checked @else ' ' @endif  >
                <label for="vehicle1"> {{ $Course->Cname }}
                 </label>
                 @php $i=$i+1;  @endphp
                @endforeach

            </div>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Createrd At</label>
                <input type="date" class="form-control" id="exampleInputPassword1" name="create"  value="">
              </div>
              <span class="text-danger">@error('create')
                {{ $message }}
            @enderror </span>

              <div class="mb-2">
                <label for="exampleInputPassword1" class="form-label">Updated At</label>
                <input type="date" class="form-control" id="exampleInputPassword1" name="update"  value="  ">
              </div>
              <span class="text-danger">@error('update')
                {{ $message }}
            @enderror </span>

            <button type="submit" class="btn btn-primary">Submit</button>
          </form>

      </div>
@endsection

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



