<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>

    <style>
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
    
        .pagination-link {
            padding: 5px 10px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 5px;
        }
    
        .pagination-link:hover {
            background-color: #2980b9;
        }
    
        .disabled-pagination {
            padding: 5px 10px;
            background-color: #ccc;
            color: #666;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 5px;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <h3>List of Skills Map</h3><br>
    <form class="d-flex" method="GET" action="{{ route('approved.skills_map') }}" style="width: 40%;" id="search-form">
        <div class="input-group">
            <button type="button" class="btn btn-danger" id="clear-search" style="margin-right: 7px;">Clear Search</button>
            <input class="form-control me-2" type="search" name="query" placeholder="Search" aria-label="Search" id="search-input" value="{{ request('query') }}">
            <button class="btn btn-success" type="submit" id="search-button">Search</button>
        </div>
    </form><br>
    <table class="table table-success table-striped-columns table-fixed" id="results-table" style="height: 80vh">
        <thead>
            <tr>
                <th colspan="7" class="table-info">Total Skills Map Result</th>
                <th colspan="1" class="table-info">{{ $totalCount }}</th>
            </tr>
            <tr>
                <th scope="col" style="width: 1%">Skill Map #</th>
                <th scope="col" style="width: 1%">Level</th>
                <th scope="col" style="width: 1.5%">Content Area</th>
                <th scope="col" style="width: 1.5%">PISA Framework</th>
                <th scope="col" style="width: 4%">Topics</th>
                <th scope="col" style="width: 5%">Sub-topics</th>
                <th scope="col" style="width: 5%">Course Skill</th>
                <th scope="col" style="width: 5%">Course Title</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data as $row)
            <tr>
                <th scope="row">{{ ($data->currentPage() - 1) * $data->perPage() + $loop->index + 1 }}</th>
                <td>{{ $row->Level }}</td>
                <td>{{ $row->Content_Area }}</td>
                <td>{{ $row->PISA_Framework }}</td>
                <td>{{ $row->Topics }}</td>
                <td>{{ $row->Sub_Topics }}</td>
                <td>{{ $row->Course_Skill }}</td>
                <td>{{ $row->Course_Title }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <div class="pagination" style="margin-left: 86.8%">
        @if ($data->onFirstPage())
            <a class="disabled-pagination">Previous</a>
        @else
            <a href="{{ $data->previousPageUrl() }}@if(isset($searchQuery))&query={{ $searchQuery }}@endif" class="pagination-link">Previous</a>
        @endif
        <div class="mb-2">
            Page {{ $data->currentPage() }} of {{ $data->lastPage() }}
        </div>
        @if ($data->hasMorePages())
            <a href="{{ $data->nextPageUrl() }}@if(isset($searchQuery))&query={{ $searchQuery }}@endif" class="pagination-link">Next</a>
        @else
            <a class="disabled-pagination">Next</a>
        @endif
    </div><br> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const searchInput = document.getElementById('search-input');
            const clearSearchButton = document.getElementById('clear-search');
    
            clearSearchButton.addEventListener('click', function () {
                searchInput.value = '';
                searchInput.focus();
                document.querySelector('#search-form').submit();
            });
        });
    </script>
</body>
</html>