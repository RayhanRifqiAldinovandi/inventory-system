<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite('resources/css/app.css')
</head>
<body class=" bg-gradient-to-tr from-white to-gray-400">
    <!-- component -->
<div class="bg-grey-lighter min-h-screen flex flex-col">
    <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
        <form class="bg-white px-6 py-8 rounded shadow-md text-black w-full" action="" method="post">
            @csrf
            <h1 class="mb-8 text-3xl text-center">Login</h1>
            <input 
                type="text"
                class="block border border-grey-light w-full p-3 rounded mb-4"
                name="name"
                placeholder="Full Name" />

            <input 
                type="password"
                class="block border border-grey-light w-full p-3 rounded mb-4"
                name="password"
                id="password"
                placeholder="Password" />
            
            <button
                type="submit"
                class="w-full text-center py-3 rounded bg-green-500 text-white hover:bg-green-700 focus:outline-none my-1"
            >Login</button>

            @error('message')
            <h1 class="text-red-500">Failed to login</h1>
            @enderror
        </div>
    </div>
</div>
</body>
</html>