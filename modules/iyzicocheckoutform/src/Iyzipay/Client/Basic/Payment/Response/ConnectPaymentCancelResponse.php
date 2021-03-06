<?php

namespace Iyzipay\Client\Basic\Payment\Response;

use Iyzipay\Client\Basic\Payment\Response\Mapper\ConnectPaymentCancelResponseMapper;

class ConnectPaymentCancelResponse extends PaymentCancelResponse
{
    private $connectorName;

    public function getConnectorName()
    {
        return $this->connectorName;
    }

    public function setConnectorName($connectorName)
    {
        $this->connectorName = $connectorName;
    }

    public function fromJson($jsonResult)
    {
        ConnectPaymentCancelResponseMapper::newInstance()->mapResponse($this, $jsonResult);
    }
}