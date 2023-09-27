
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


<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Gender</th>
                <th>address</th>
                <th>Image</th>
                <th>DOB</th>

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
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

  </body>
</html>
