#!/usr/bin/env python3
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

import os

""" Bot Configuration """


class DefaultConfig:
    """ Bot Configuration """

    PORT = 3978
    APP_ID = os.environ.get("MicrosoftAppId", "af8f39e6-2889-4a21-9c94-df2569aa12d1")
    APP_PASSWORD = os.environ.get("MicrosoftAppPassword", "")
    APP_TYPE = os.environ.get("MicrosoftAppType", "Microsoft.ManagedIdentity/userAssignedIdentities")
    APP_TENANTID = os.environ.get("MicrosoftAppTenantId", "973ba820-4a58-4246-84bf-170e50b3152a")