//
// Created by Eugene Kazaev on 14/02/2018.
//

#if os(iOS)

import Foundation
import UIKit

// Chainable step.
// Identifies that the step can be a part of the chain,
// e.g. when it comes to the presentation of multiple view controllers to reach destination.
protocol ChainableStep {

    // `RoutingStep` to be made by a `Router` before getting to this step.
    func getPreviousStep<Context>(with context: Context) -> RoutingStep?

}

#endif
