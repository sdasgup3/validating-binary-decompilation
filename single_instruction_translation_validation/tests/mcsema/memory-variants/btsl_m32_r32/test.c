void leaf() {
  __asm__("btsl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}