<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Developer Jobs</title>
    <!-- Bootstrap CSS ekleyin -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Developer Jobs</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Developer Name</th>
                    <th>Job Name</th>
                    <th>Assigned Hours</th>
                    <th>Created At</th>
                    <th>Updated At</th>
                </tr>
            </thead>
            <tbody>
            <h1>Haftalık Plan</h1>
        <p>Toplam {{ $weeks }} hafta süresince yapılan işler:</p>
                @foreach ($developerJobs as $developerJob)
                    <tr>
                        <td>{{ $developerJob->developer->name }}</td>
                        <td>{{ $developerJob->job->title }}</td>
                        <td>{{ $developerJob->assigned_hours }}</td>
                        <td>{{ $developerJob->created_at }}</td>
                        <td>{{ $developerJob->updated_at }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!-- Bootstrap JS ve jQuery ekleyin -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
