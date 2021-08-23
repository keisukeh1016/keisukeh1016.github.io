const fs = require('fs');

const writeJSON = (start, stop) => {
  fs.writeFileSync(
    createFileName(start, stop),
    JSON.stringify(createSettings(start,stop), null, 2)
  );
}

const createFileName = (start, stop) => {
  const numberFormatter = new Intl.NumberFormat(undefined, {minimumIntegerDigits: 3, minimumFractionDigits: 1});
  const startStr = numberFormatter.format(String(start));
  const stopStr = numberFormatter.format(String(stop));

  return `./${startStr}-${stopStr}.json`;
};

const createSettings = (start, stop) => {
  const settings = {
    gradate: false,
    useHillshademap: false,
    desc: false,
    colors: [],
  };
  const step = 0.5;

  for (let i=start; i<(stop+step); i+=step) {
    settings.colors.push({h: i, color: '#ffffff'});
  }
  settings.colors.push({h: null, color: '#ffffff'});

  return settings;
};

writeJSON(
  Number(process.argv[2]),
  Number(process.argv[3])
);