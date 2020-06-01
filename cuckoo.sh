# Generate mock files; include as many input files as you'd like to create mocks for
containsElement()
{
local e match="$1"
shift
for e; do [[ "$e" == "$match" ]] && return 1; done
return 0
}

$PODS_ROOT/Cuckoo/run generate --testable $1 --no-timestamp \
--output "${SCRIPT_OUTPUT_FILE_0}"

counter=0
files=()
while [ $counter -lt ${SCRIPT_INPUT_FILE_COUNT} ]
do
tmp="SCRIPT_INPUT_FILE_$counter"
file=${!tmp}
filename=$(basename ${file%.*})
containsElement "$filename" "${files[@]}"
contains=$?
if [ "$contains" -eq "1" ]; then
  echo -e "$filename:0: error : Duplicate file found in Cuckoo input files list\n" 1>&2
  exit 1
else
  files+=($filename)
  folder=$(basename $(dirname $(dirname $file)))
  sed -i '' 's/[[:<:]]'$filename'[[:>:]]/'$folder'.'$filename'/g' ${SCRIPT_OUTPUT_FILE_0}
  sed -i '' 's/[[:<:]]Domain.Platform[[:>:]]/Domain/g' ${SCRIPT_OUTPUT_FILE_0}
  ((counter++))
fi
done

echo "//swiftlint:disable all\n$(cat ${SCRIPT_OUTPUT_FILE_0})" > ${SCRIPT_OUTPUT_FILE_0}
