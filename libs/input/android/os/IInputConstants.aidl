/**
 * Copyright (c) 2020, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.os;


/** @hide */
interface IInputConstants
{
    // This should be multiplied by the value of the system property ro.hw_timeout_multiplier before
    // use. A pre-multiplied constant is available in Java in
    // android.os.InputConstants.DEFAULT_DISPATCHING_TIMEOUT_MILLIS.
    const int UNMULTIPLIED_DEFAULT_DISPATCHING_TIMEOUT_MILLIS = 5000; // 5 seconds

    // Compatibility changes.
    /**
      * TODO(b/157929241): remove this before closing the bug. This is needed temporarily
      * to identify apps that are using this flag.
      */
    const long BLOCK_FLAG_SLIPPERY = 157929241;

    // Indicate invalid battery capacity
    const int INVALID_BATTERY_CAPACITY = -1;

    /**
     * Every input event has an id. This constant value is used when a valid input event id is not
     * available.
     */
    const int INVALID_INPUT_EVENT_ID = 0;

    /**
     * The injected event was originally sent from InputDispatcher. Most likely, the journey of the
     * event looked as follows:
     * InputDispatcherPolicyInterface::filterInputEvent -> InputFilter.java::onInputEvent ->
     * InputFilter.java::sendInputEvent -> InputDispatcher::injectInputEvent, without being modified
     * along the way.
     */
    const int POLICY_FLAG_INPUTFILTER_TRUSTED = 0x10000;

    /**
     * The input event was injected from accessibility
     */
    const int POLICY_FLAG_INJECTED_FROM_ACCESSIBILITY = 0x20000;
}
