function Write-VerboseAdvanced {
    [CmdletBinding()]
    param(
        [parameter(Mandatory, ValueFromPipeline)]$Input,
        [Switch]$PassThrough
    )
    if($VerbosePreference -ne "SilentlyContinue") {
        $Input | Format-List * | Out-String -Stream | Write-Verbose
    }
    if ($PassThrough) {$Input}
}