use serde::{Deserialize, Serialize};

#[derive(Deserialize, Serialize, Debug, Clone)]
pub enum ServerToClient {}

#[derive(Deserialize, Serialize, Debug, Clone)]
pub enum ServerToApp {}
