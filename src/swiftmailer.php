<?php
require_once(__DIR__.'/../vendor/autoload.php');

// Create the Transport
$transport = (new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl'))
  ->setUsername('wilgis6901@gmail.com')
  ->setPassword('')
;

// Create the Mailer using your created Transport
$mailer = new Swift_Mailer($transport);

// Create a message
$body = 'Hello, <p>Thanks for <span style="color:#79F8F8;">Getting in touch with me</span>.</p><p> ';

$message = (new Swift_Message('Entrer en contact'))
  ->setFrom(['wilgis6901@gmail.com' => 'William Fernandes'])
  ->setTo([$_POST['mail']])
  ->setBody($body)
  ->setContentType('text/html')
;

// Send the message
$mailer->send($message);
?>
