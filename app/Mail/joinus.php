<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class joinus extends Mailable
{
    use Queueable, SerializesModels;
    protected $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
//        $data = $this->data;
        $mail = $this->view('mail.joinus')->from('devmrm01@gmail.com');

//        if (isset($this->data['cv'])){
//            $v = $this->data['cv'];
//            $mail = $mail->attach($v["path"], [
//                'as' => $v["as"],
//                'mime' => $v["mime"],
//            ]);
//        }

        return $mail;
    }
}
