const http = require('http');
const opentracing = require('opentracing')

const tracer = new opentracing.Tracer();

const span = tracer.startSpan('http_request');
const opts = {
    host : 'example.com',
    method: 'GET',
    port : '80',
    path: '/',
};
http.request(opts, res => {
    res.setEncoding('utf8');
    res.on('error', err => {
        // assuming no retries, mark the span as failed
        span.setTag(opentracing.Tags.ERROR, true);
        span.log({'event': 'error', 'error.object': err, 'message': err.message, 'stack': err.stack});
        span.finish();
    });
    res.on('data', chunk => {
        span.log({'event': 'data_received', 'chunk_length': chunk.length});
    });
    res.on('end', () => {
        span.log({'event': 'request_end'});
        span.finish();
    });
}).end();

