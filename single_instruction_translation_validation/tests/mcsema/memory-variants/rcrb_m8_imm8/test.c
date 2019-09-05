void leaf() {
  __asm__("rcrb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}