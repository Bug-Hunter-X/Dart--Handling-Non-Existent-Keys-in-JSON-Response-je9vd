# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart applications involving accessing non-existent keys in JSON responses.  The `bug.dart` file showcases the error, while `bugSolution.dart` provides a solution.

## Problem

When making API calls and parsing JSON responses in Dart, developers often encounter runtime exceptions when attempting to access keys that don't exist in the JSON data structure. This can lead to unexpected crashes and application instability.

## Solution

The recommended approach is to check for the existence of a key before attempting to access its value.  This can be achieved using the `containsKey` method or optional chaining, making your code more robust and preventing runtime errors.