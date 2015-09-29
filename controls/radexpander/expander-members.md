---
title: Members
page_title: Members
description: Members
slug: radexpander-members
tags: overview
published: True
position: 2
---

## Members


### Properties

1. **AnimatedIndicatorContent** (object) - Gets or sets the content of the expander indicator. By default this property is set to an image visualizing arrow.
2. **AnimatedIndicatorContentTemplate** (DataTemplate) - Gets or sets an instance of the DataTemplate class that defines the visual appearance of the content defined by the **AnimatedIndicatorContent** property.
2. **AnimatedIndicatorStyle** (Style) - Gets or sets the style applied to the ContentPresenter hosting the AnimatedIndicatorContent.
3. **ExpandableContent** (object) - Gets or sets the collapsible/expandable content.
4. **ExpandableContentTemplate** (DataTemplate) - Gets or sets an instance of the DataTemplate class that defines the visual appearance of the content defined by the **ExpandableContent** property.
4. **ExpandedStateContent** (object) - Gets or sets the content which is visualized when the control is in expanded state.
5. **ExpandedStateContentTemplate** (DataTemplate) - Gets or sets an instance of the DataTemplate class that defines the visual appearance of the content defined by the **ExpandedStateContentTemplate** property.
5. **IsExpandable** (bool) - Gets or sets a boolean value indicating if the user is allowed to change the state of the control.
6. **IsExpanded** (bool) - Gets or sets a boolean value indicating the current state of the control.
7. **UseOptimizedMeasure** (bool) - Gets or sets a boolean value which determines whether the expandable content is measured only when the control is being expanded or at the initial layout pass for the whole control.

>tipWhen an optimized measure pass is used, some delays in the expansion may occur depending on the complexity of the expandable content's template.

### Events

1. **ExpandedStateChanged** - Occurs when the **IsExpanded** property has changed.
2. **ExpandedStateChanging** - Occurs when the **IsExpanded** property is about to change.