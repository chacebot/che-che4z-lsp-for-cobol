/*
 * Copyright (c) 2022 Broadcom.
 * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *   Broadcom, Inc. - initial API and implementation
 */

import {join} from "path";
import {Executable} from "vscode-languageclient";
import {NativeLanguageClient} from "./nativelanguageClientInterface";

export class LinuxlanguageClient implements NativeLanguageClient {
    private serverPath: string;
    private readonly executablePath: string;
    private readonly command: string;

    constructor(serverPath) {
        this.serverPath = serverPath;
        this.executablePath = join(serverPath, "package-linux");
        this.command = `./server`;
    }

    public getServer(): Executable {
        return {
            args: ["pipeEnabled","-Dline.separator=\r\n", "-Dlogback.statusListenerClass=ch.qos.logback.core.status.NopStatusListener"],
            command: this.command,
            options: {detached: false, cwd: this.executablePath},
        };
    }
}