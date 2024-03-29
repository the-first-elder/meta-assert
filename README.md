# HorseStore Contract

This Solidity smart contract, named `HorseStore`, provides functionality for managing the number of horses in a virtual store. It demonstrates two different methods of handling invalid input: using `require` and `revert`, and includes a function to check if the number of horses is greater than ten.

## Features

- **setNumberOfHorsesWithRequire:** This function sets the number of horses using the `require` statement to ensure that the input is valid. If the input is 0, it will revert with the message "invalid amount".
- **setNumberOfHorsesWithRevert:** Similar to the above function, this one sets the number of horses but uses `revert` in case of an invalid input. If the input is 0, it will revert with the custom error `InvalidAmount`.

- **checkNumberOfHorsesIsGreaterThanTen:** A view function that checks if the number of horses stored is greater than 10 using the `assert` statement.

- **readNumberOfHorses:** This external view function allows reading the current number of horses stored in the contract.

## Usage

1. **Deploying the Contract:** Deploy the `HorseStore` contract to the Ethereum blockchain.

2. **Setting the Number of Horses:**

   - Call either `setNumberOfHorsesWithRequire` or `setNumberOfHorsesWithRevert`, passing the desired number of horses as an argument.
   - If the input is 0, the transaction will revert with an error message.

3. **Checking Number of Horses:**

   - Call the `checkNumberOfHorsesIsGreaterThanTen` function to verify if the number of horses stored is greater than 10.

4. **Reading Number of Horses:**
   - Call the `readNumberOfHorses` function to retrieve the current number of horses stored in the contract.

## Development

- **Solidity Version:** 0.8.19
- **License:** GPL-3.0-only
- **SPDX-License-Identifier:** GPL-3.0-only

## License

This project is licensed under the terms of the GNU General Public License v3.0 (GPL-3.0-only). See [LICENSE](LICENSE) for more information.

---
