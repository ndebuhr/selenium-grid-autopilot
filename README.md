# Selenium Grid Autopilot

A Helm chart for deploying Selenium Grid with Chrome, Firefox, and Edge browsers on Google Kubernetes Engine (GKE) Autopilot.

## Overview

This project provides a Helm chart that:
- Deploys a Selenium Hub for test orchestration
- Spins up browser nodes (Chrome, Firefox, and Edge)
- Includes a code-server instance for writing and running tests
- Configures networking with optional Identity-Aware Proxy (IAP) support

## Prerequisites

- Google Kubernetes Engine (GKE) Autopilot cluster
- Helm v3+
- kubectl configured to communicate with your GKE cluster

## Installation

```bash
# Clone the repository
git clone https://github.com/ndebuhr/selenium-grid-autopilot.git
cd selenium-grid-autopilot

# Install the chart
helm install selenium-grid ./
```

For custom configurations:

```bash
# Install with custom values
helm install selenium-grid ./ -f my-values.yaml
```

## Example Usage

Connect to the Selenium Grid in your test code with:

```python
from selenium import webdriver
from selenium.webdriver.common.options import Options

options = Options()
driver = webdriver.Remote(
    command_executor='http://selenium-hub:4444/wd/hub',
    options=options
)
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.