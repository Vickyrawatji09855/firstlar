
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <a href="{{ url('/') }}">
        <button type="button" class="btn btn-primary" style="margin: 10px 0px 10px 1400px">Add Customers</button>
    </a>

    <div class="modal fade " id="deleteModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Delete Customer </h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              Are you sure you want to delete this record?
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>

<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Gender</th>
                <th>address</th>
                <th>Image</th>
                <th>DOB</th>
                <th>PASSWORD</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            @foreach($Customers as $customer)
            <tr>
                <td>{{ $customer->name }}</td>
                <td>
                    @if($customer->gender=="M")
                    MALE
                    @elseif($customer->gender=="F")
                    FEMALE
                    @else
                    OTHERS
                    @endif
                </td>
                <td>{{ $customer->adderss }}</td>
                <td> <img src="images/{{$customer->image}}" alt="img" height="50px" width="60px" > </td>
                <td>{{ $customer->dob }}</td>
                <td>{{ $customer->password }}</td>
                <td>

                {{-- without route with url()
                     <a href="{{ url('/customer/delete/') }}/{{ $customer->id  }}">
                    <button type="button" class="btn btn-danger" id="" value="{{ $customer->id }}" onclick="return confirm('Are you sure you want to delete this document');" >Delete</button>
                </a> --}}
                <a href="{{ route('customer.delete',['id'=>$customer->id]) }}">
                    <button type="button" class="btn btn-danger"  value="{{ $customer->id }}" onclick="return confirm('Are you sure you want to delete this document');" >Delete</button>
                </a>
                <a href="{{ route('customer.edit',['id'=>$customer->id]) }}">
                    <button class="btn btn-primary"  value="{{ $customer->id }}">EDIT</button>
                </a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

  </body>
</html>
