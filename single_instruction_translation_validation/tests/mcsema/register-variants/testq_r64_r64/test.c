void leaf() {
  __asm__("testq %rcx, %rbx");
  }

void main() {
  leaf();
}