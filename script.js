//Enviar datos eb formato xml*//
let XMLWriter = require('xml-writer');

require('http').createServer(function(req, res) {
    let xml= new XMLWriter();
    xml.startDocument().starElement('persona');
    xml.starElement('persona');
    xml.writeElement('nombre','Frank Óscar Padilla');
    xml.writeElement('num_cli','9876543241');
    xml.writeElement('mascara','DOC - EUC - Garantias');
    xml.writeElement('tip_doc','Detalle de Garantias de Cliente');
    xml.writeElement('agencia','Centro');
    xml.writeElement('id_agencia','4');
    xml.writeElement('nombre_doc','DUI/Frank Óscar Padilla');
    xml.writeElement('num_doc','09876543-1');
    xml.writeElement('fecha_vigencia','20200506');
    xml.writeElement('fecha_expiracion','20280506');
    xml.writeElement('fecha_doc','20230425');
    xml.writeElement('fecha_archivado','20231226');
    xml.writeElement('hora_archivado','1311');
    xml.writeElement('archivado_por','d.user');
    xml.writeElement('num_crediticio','123456789');

    xml.EndElement();
    res.writehead(200,{'Content-type':'application/xml', 'access-control-allow-origin': '*'});
    res.end(xml.toString()), 'utf8'
}).listen(4900);
console.log('El servidor se esta ejecutando en el puerto 4900');



