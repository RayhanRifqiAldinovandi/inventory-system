<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable;

class userData extends Model implements Authenticatable
{
    use HasFactory;
    
    protected $fillable = ['id','name','email','password'];

        public function getAuthIdentifierName()
    {
        return 'id'; // Return the name of the "id" column
    }

    public function getAuthIdentifier()
    {
        return $this->getKey(); // Return the user's unique identifier
    }

    public function getAuthPassword()
    {
        return $this->password; // Return the hashed password
    }

    public function getRememberToken()
    {
        return $this->remember_token; // Return the remember token
    }

    public function setRememberToken($value)
    {
        $this->remember_token = $value; // Set the remember token
    }

    public function getRememberTokenName()
    {
        return 'remember_token'; // Return the name of the remember token column
    }
}
