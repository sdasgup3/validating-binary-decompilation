void leaf() {
  __asm__("blsrq %rcx, %rbx");
  }

void main() {
  leaf();
}