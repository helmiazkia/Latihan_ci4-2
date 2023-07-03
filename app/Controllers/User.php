<?php

namespace App\Controllers;

use App\Models\UserModel;

class User extends BaseController
{
    protected $userModel;

    public function __construct()
    {
        $this->userModel = new UserModel();
    }

    public function register()
    {
        return view('register');
    }

    public function save()
    {
        $rules = [
            'username' => 'required|min_length[5]',
            'password' => 'required|min_length[4]',
            'confirm_password' => 'required|matches[password]'
        ];
    
        if (!$this->validate($rules)) {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }
    
        $data = [
            'username' => $this->request->getPost('username'),
            'password' => password_hash($this->request->getPost('password'), PASSWORD_DEFAULT),
            'role' => 'user',
            'is_aktif' => true
        ];
    
        $this->userModel->insert($data);
    
        return redirect()->to('/login')->with('success', 'Registration successful! Please log in.');
    }
    
}
