function isStrongPassword(password: string): boolean {
  // criteria
  const minLength = 8;
  const hasUppercase = /[A-Z]/.test(password);
  const hasLowercase = /[a-z]/.test(password);
  const hasNumber = /[0-9]/.test(password);
  const hasUnderscore = /[*_*]/.test(password);

  // Checks
  const isLengthValid = password.length >= minLength;
  const hasValidUppercase = hasUppercase;
  const hasValidLowercase = hasLowercase;
  const hasValidNumber = hasNumber;
  const hasValidSpecialChar = hasUnderscore;

  return (
      isLengthValid &&
      hasValidUppercase &&
      hasValidLowercase &&
      hasValidNumber &&
      hasValidSpecialChar
  );
}

// Grab password from command line
const inputtedPassword = process.argv[2]

// Check
const isSecure = isStrongPassword(inputtedPassword);

if (isSecure) {
  console.log("Password is strong!");
} else {
  console.log("Password is weak. Please use a stronger password.");
}
