modifier safeAmount(uint transactionId) {
        require(transactions[transactionId].value <= 66);
        _;
    }

function confirmTransaction(uint transactionId)
        public
        ownerExists(msg.sender)
        transactionExists(transactionId)
        safeAmount(transactionId)
        notConfirmed(transactionId, msg.sender)
    {
        confirmations[transactionId][msg.sender] = true;
        Confirmation(msg.sender, transactionId);
        executeTransaction(transactionId);
    }

======================================================


TODO


======================================================

 заменить function() external payable?