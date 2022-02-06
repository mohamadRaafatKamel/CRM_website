<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareHub</title>
</head>
<body>
<h1>Request Information</h1>

@if(isset($data['name']))
<p>Name :  {{ $data['name'] }} </p>
@endif 
@if(isset($data['phone']))
<p>Phone :  {{ $data['phone'] }} </p>
@endif 
@if(isset($data['specialty_id']))
<p>Specialty :  {{ \App\Models\Specialty::getNameEN($data['specialty_id']) }} </p>
@endif

<p></p>

</body>
</html>
