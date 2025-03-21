% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authenticate.R
\name{schwab_auth3_accessToken}
\alias{schwab_auth3_accessToken}
\title{Auth Step 3: Get Access Token}
\usage{
schwab_auth3_accessToken(appKey, appSecret, refreshToken)
}
\arguments{
\item{appKey}{'Schwab API' generated App Key for the registered app.}

\item{appSecret}{'Schwab API' generated Secret for the registered app.}

\item{refreshToken}{An existing Refresh Token generated using
\code{\link{schwab_auth2_refreshToken}}. Only pass the refresh_token, not the entire list}
}
\value{
Access Token that is valid for 30 minutes. By default it is stored in
  options.This is a list of objects that also shows when the access token expires
}
\description{
Get a new Access Token using a valid Refresh Token
}
\details{
An Access Token is required for the functions within 'schwabr' It serves
as a user login to your accounts. The token is valid for 30 minutes
and allows the user to place trades, get account information, get order
history, pull historical stock prices, etc. A Refresh Token is required to
generate an Access Token. \code{\link{schwab_auth2_refreshToken}}  can be used to
generate a Refresh Token which stays valid for 7 days. The appKey is
generated automatically when an App is registered on the
\href{https://developer.schwab.com}{Schwab Developer} site. By default,
the Access Token is stored into options and will automatically be
passed to downstream functions. However, the user can also submit an Access
Token manually if multiple tokens are in use (for example: when managing more
than one log in.)


DISCLOSURE: This software is in no way affiliated, endorsed, or approved by
Charles Schwab or any of its affiliates. It comes with absolutely no warranty
and should not be used in actual trading unless the user can read and
understand the source code. The functions within this package have been
tested under basic scenarios. There may be bugs or issues that could prevent
a user from executing trades or canceling trades. It is also possible trades
could be submitted in error. The user will use this package at their own
risk.
}
\examples{
\dontrun{

# A valid Refresh Token can be fed into the function below for a new Access Token
refreshToken = readRDS('/secure/location/')
accessTokenList = schwab_auth3_refreshToken('schwab_APPKey', 'schwab_AppSecret', refreshToken)

}
}
\seealso{
\code{\link{schwab_auth1_loginURL}} to generate a login url which leads
  to an authorization code, then use  \code{\link{schwab_auth2_refreshToken}} to
  generate Refresh Token with the authorization code
}
