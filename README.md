# zk-proof-circom
The zero knowledge range proof allows to validate that a secret number is within known limits without disclosing the secret number. This is useful in a variety of use cases:
- Validate that someone's age is between 18 and 65 without disclosing the age.
- Validate that someone is in Europe without disclosing the exact location.
- Validate that a payment-amount is in range without disclosing the amount, can be useful in price or salary negotiations.

Commitment can be used in the first step, so that later it cannot be changed.