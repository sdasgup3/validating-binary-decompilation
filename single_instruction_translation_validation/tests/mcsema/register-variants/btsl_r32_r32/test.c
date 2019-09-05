void leaf() {
  __asm__("btsl %ecx, %ebx");
  }

void main() {
  leaf();
}