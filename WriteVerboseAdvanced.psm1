function Write-VerboseAdvanced {
    [CmdletBinding()]
    param(
        [parameter(Mandatory, ValueFromPipeline)]$VerboseInput,
        [Switch]$PassThrough
    )
    if($VerbosePreference -ne "SilentlyContinue") {
        $VerboseInput | Format-List * | Out-String -Stream | Write-Verbose
    }
    if ($PassThrough) {$VerboseInput}
}