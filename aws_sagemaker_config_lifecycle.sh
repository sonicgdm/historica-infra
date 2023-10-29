aws sagemaker update-domain --domain-id d-utsx0xiuq1pc \
--default-user-settings '{
"JupyterServerAppSettings": {
  "DefaultResourceSpec": {
    "LifecycleConfigArn": "arn:aws:sagemaker:eu-central-1:886466237783:studio-lifecycle-config/install-autoshutdown-extension",
    "InstanceType": "system"
   },
   "LifecycleConfigArns": [
     "arn:aws:sagemaker:eu-central-1:886466237783:studio-lifecycle-config/install-autoshutdown-extension"
   ]
}}'
