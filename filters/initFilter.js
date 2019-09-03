module.exports = function (req, res, next) {
  res.locals.seo = {
    title: 'Benz CRM',
    keywords: 'crm',
    description: 'Benz-crm'
  }

  next();
}