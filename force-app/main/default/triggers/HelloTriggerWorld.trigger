trigger HelloTriggerWorld on Account (before insert) {
     System.debug('Hello  Trigger');

}