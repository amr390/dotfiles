import React from 'react';

interface Props {
  activeID: number;
  changeActive: Function;
  data: any
}

export const Controls: React.FC<Props> = props => {
  const handleClick = (id: number) => {
    if (id !== props.activeID) {
      props.changeActive(id);
    } else {
      return;
    }
  };
  
  return (
    <div className="selectors">
      {props.data.map((item: any) => 
        <Control
          key={item.id}
          id={item.id}
          handleClick={()=>handleClick(item.id)}
          changeActive={props.changeActive}
          activeID={props.activeID}
          />
      )}
    </div>
  );
};

const Control: React.FC<any> = (props: any)=> {
  let componentClass = 'selector';
  if (props.activeID === props.id) {
    componentClass = 'selector active';
  }
  return (
    <div className={componentClass} onClick={props.handleClick.bind(this)}></div>
  );
}
