# Copyright (c) 2019-present Sonatype, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM alpine

LABEL com.github.actions.name="Nancy for GitHub Actions" \
    com.github.actions.description="Run Sonatype Nancy as part of your GitHub Actions workflow."

RUN apk add curl && \
    mkdir -p /github/home && \
    curl -O /github/home/nancy \
        https://github.com/sonatype-nexus-community/nancy/releases/download/0.0.4/nancy-linux.amd64-0.0.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]