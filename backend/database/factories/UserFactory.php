<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'fullname'=>$this->faker->name(),
            'username'=>$this->faker->userName(),
            'email'=>$this->faker->unique()->safeEmail(),// ให้ unique จากตาราง users โดยไม่ให้ email ซ้ำ
            'password'=>bcrypt('Aa123654'), //ให้ใส่รหัสสองครั้งเพื่อเช็ครหัสว่าตรงกันไหม
            'tel'=>$this->faker->phoneNumber(),
            'role'=>1,
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
