import React from "react";

export const Step: React.FC <any> = (props: any) =>
<aside className="panel" style={props.panelStyle}>
  <h2 className="panel-header">{props.data.header}</h2>
  <p className="panel-info">{props.data.body}</p>
  <button className="panel-button" 
    style={props.buttonStyle}
    onMouseEnter={props._buttonColour}
    onMouseLeave={props._buttonColour}>
    Read More
  </button>
</aside>

