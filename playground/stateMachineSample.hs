data DoorState = Opened | Closed  deriving(Show)
data DoorAction = Open | Close | Knock

act :: DoorState -> DoorAction -> Maybe DoorState
act Opened Knock = Just Opened
act Opened Close = Just Closed
act Closed Open = Just Opened
act _ _ = Nothing